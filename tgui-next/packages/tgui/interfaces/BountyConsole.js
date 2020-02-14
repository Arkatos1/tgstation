import { Fragment } from 'inferno';
import { act } from '../byond';
import { Table, AnimatedNumber, Box, Button, Section, Tabs } from '../components';

export const BountyConsole = props => {
  const { state } = props;
  const { config, data } = state;
  const { ref } = config;
  let available_bounties = [
    ...data.available_bounties,
  ];
  let completed_bounties = [
    ...data.completed_bounties,
  ];
  return (
    <Tabs>
      <Tabs.Tab
        key="available"
        label="Available"
        icon="list"
        lineHeight="23px">
        {() => (
          <Section
            title="Nanotrasen Cargo Bounties"
            buttons={(
              <Fragment>
                <Box inline bold>
                  <AnimatedNumber value={Math.round(data.credits)} /> credits
                </Box>
                {' '}
                <Button
                  icon={'print'}
                  content="Print Bounties"
                  onClick={() => act(ref, 'print')} />
              </Fragment>
            )}>
            <Bounties state={state} bounties={available_bounties} />
          </Section>
        )}
      </Tabs.Tab>
      <Tabs.Tab
        key="completed"
        label="Completed"
        icon="check"
        lineHeight="23px">
        {() => (
          <Section
            title="Completed Bounties"
            buttons={(
              <Fragment>
                <Box inline bold>
                  <AnimatedNumber value={Math.round(data.credits)} /> credits
                </Box>
                {' '}
                <Button
                  icon={'print'}
                  content="Print Bounties"
                  onClick={() => act(ref, 'print')} />
              </Fragment>
            )}>
            <Bounties state={state} bounties={completed_bounties} />
          </Section>
        )}
      </Tabs.Tab>
    </Tabs>
  );
};

const Bounties = props => {
  const { bounties } = props;
  let cellstyle={
    'vertical-align': 'middle',
    'horizontal-align': 'middle',
    'text-align': 'center',
    'min-width': '100px',
    'min-height': '75px',
  };
  let headerstyle={
    'vertical-align': 'middle',
    'horizontal-align': 'middle',
    'text-align': 'center',
    'min-width': '70px',
    'min-height': '35px',
  };
  return (
    <Table border="1">
      <Table.Row header>
        <Table.Cell style={headerstyle}>
          Name
        </Table.Cell >
        <Table.Cell style={headerstyle}>
          Description
        </Table.Cell>
        <Table.Cell style={headerstyle}>
          Reward
        </Table.Cell>
        <Table.Cell style={headerstyle}>
          Completion
        </Table.Cell>
      </Table.Row>
      {bounties.map((bounty => {
        return (
          <Table.Row
            key={bounty.name}
            bold={bounty.high_priority ? true : false}>
            <Table.Cell style={cellstyle}>
              <Box color="label">
                {bounty.name}
              </Box>
            </Table.Cell>
            <Table.Cell style={cellstyle}>
              {bounty.description}
            </Table.Cell>
            <Table.Cell collpasing style={cellstyle}>
              <Box color="average">
                {bounty.reward}
              </Box>
            </Table.Cell>
            <Table.Cell collapsing style={cellstyle}>
              <Box color={bounty.claimed ? "good" : "bad"}>
                {bounty.units}
              </Box>
            </Table.Cell>
          </Table.Row>
        );
      }))}
    </Table>
  );
};
